import React from "react";
import RestaurantCard from "./RestaurantCard";

const CardView = (props) => {
  const { restaurants } = props;

  return (
    <div className="columns is-multiline">
      {restaurants.map((restaurant) => {
        return (
          <div key={restaurant.id} className="column is-one-third">
            <RestaurantCard
              name={restaurant.name}
              rating={restaurant.rating}
              cuisine={restaurant.cuisine}
              updated_at={restaurant.updated_at}
              description={restaurant.description}
            />
          </div>
        );
      })}
    </div>
  );
};

export default CardView;
