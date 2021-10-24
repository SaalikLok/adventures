import React from "react";
import formattedDate from "../../helpers/formattedDate";

const RestaurantTableRow = (props) => {
  const { id, name, rating, cuisine, updated_at, description, isAdmin, deleteRestaurant } = props;

  return (
    <tr>
      <td>{name}</td>
      <td>{rating}</td>
      <td>{cuisine}</td>
      <td>{formattedDate(updated_at)}</td>
      <td>{description}</td>
      {isAdmin ? (
        <td>
          <span className="icon is-clickable" onClick={() => deleteRestaurant(id)}>
            <i className="fas fa-trash"></i>
          </span>
        </td>
      ) : (
        null
      )}
    </tr>
  );
};

export default RestaurantTableRow;
