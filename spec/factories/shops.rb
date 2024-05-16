FactoryBot.define do
  factory :shop do
    shop_name       { "Example Shop" }
    address         { "東京都渋谷区" }
    business_hours  { "10:00 - 18:00" }
    regular_holiday { "土曜日、日曜日" }
    shop_gazou      { "/assets/example_shop.jpg" }
    course_layout   { "/assets/course_layout.jpg" }
  end
end
