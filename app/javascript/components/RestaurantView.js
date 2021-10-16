import React, { useState } from "react";
import TableView from "./restaurantViews/TableView";
import CardView from "./restaurantViews/CardView";

const RestaurantView = (props) => {
  const { restaurants } = props;

  const [viewType, setViewType] = useState("card");

  return (
    <div>
      <div className="content">
        <span className="icon is-size-3 ml-3 has-text-dark is-clickable" onClick={() => setViewType("card")}>
          <i className="fas fa-table"></i>
        </span>
        <span className="icon is-size-3 ml-5 has-text-dark is-clickable" onClick={() => setViewType("table")}>
          <i className="fas fa-list"></i>
        </span>
      </div>
      {viewType === "table" ? (
        <TableView restaurants={restaurants} />
      ) : (
        <CardView restaurants={restaurants} />
      )}
    </div>
  );
};

export default RestaurantView;
