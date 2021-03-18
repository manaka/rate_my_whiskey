# frozen_string_literal: true

FactoryBot.define do
  factory :whiskey do
    id { 1 }
    title { "The glenlivet founder's reserve" }
    description { 'This whiskey is still distilled in exactly the same way as it was almost 200 years ago. This is done in the narrow, lantern-shaped copper kettles designed by the founder of the brand, George Smith, at the time. ' }
  end
  factory :whiskey_glenfiddich do
    id { 2 }
    title { 'Glenfiddich 12 Years' }
    description { "Glenfiddich is the world's best known Single Malt Scotch whiskey. This makes sense, as Glenfiddich was the first distillery to make single malt whiskey and export it all over the world. Glenfiddich is named after the valley ('Glen') of the deer ('fiddich'). That is why the iconic Glenfiddich deer is depicted on each bottle." }
  end
end
