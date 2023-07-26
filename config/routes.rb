Rails.application.routes.draw do

  get("/", to: "dice#homepage")
  get("/dice/:number_of_dice/:number_of_rolls", to: "dice#dynamic")
end
