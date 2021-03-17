import React, { Component, useState } from 'react'
import ReactDOM from 'react-dom'
import $ from 'jquery'
window.jQuery = $;
window.$ = $;

class Search extends Component {

    constructor(props) {
        super(props);

        this.state = {
            term: '',
            searchResults: [],
            itemSelected: {},
            showItemSelected: false
        };

        $.getJSON('/api/v1/search.json?q=' + this.state.term)
            .then(response => this.setState({ searchResults: response.items }))
    }

    getAutoCompleteResults(e){
        this.setState({
            term: e.target.value
        }, () => {
            $.getJSON('/api/v1/search.json?q=' + this.state.term)
                .then(response => this.setState({ searchResults: response.items }))
        });
    }

    render(){
        let autoCompleteList = (this.state.searchResults || []).map((response, index) => {
            return <div key={index}>
                <h2>{response.title}</h2>
                <p>{response.description }</p>
                <p>
                    {response.scores.map(score => <span>{score.name}:{score.score} </span>)}
                </p>
            </div>
        });

        return (
            <div>
                <input ref={ (input) => { this.searchBar = input } } value={ this.state.term } onChange={ this.getAutoCompleteResults.bind(this) } type='text' placeholder='Search...' />
                { autoCompleteList }
            </div>
        )
    }
}


document.addEventListener('DOMContentLoaded', () => {
    ReactDOM.render(
        <Search searchResults={[]} />,
        document.getElementById('search_result'),
    )
});
