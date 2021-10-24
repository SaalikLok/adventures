import React from "react";
import formattedDate from "../../helpers/formattedDate";

const RestaurantCard = (props) => {
  const { id, name, rating, cuisine, updated_at, description, isAdmin, deleteRestaurant } = props;

  return (
    <div className="card">
      <div className="card-content">
        <div className="columns">
          <div className="column is-narrow">
            <span className="tag is-link">{rating}</span>
          </div>
          <div className="column">
            <p className="title is-4">{name}</p>
            <p className="subtitle is-6">{cuisine}</p>
          </div>
          {isAdmin ? (
            <div className="column is-narrow">
              <span className="icon is-clickable" onClick={() => deleteRestaurant(id)}>
                <i className="fas fa-trash"></i>
              </span>
            </div>
          ) : (
            null
          )}
        </div>
        <div className="content">
          {description}
          <br />
          <p>{formattedDate(updated_at)}</p>
        </div>
      </div>
    </div>
  );
};

export default RestaurantCard;
