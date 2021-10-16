import React from 'react'
import formattedDate from '../../helpers/formattedDate'

const RestaurantTableRow = (props) => {
  const { name, rating, cuisine, updated_at, description } = props

  return (
    <tr>
      <td>{name}</td>
      <td>{rating}</td>
      <td>{cuisine}</td>
      <td>{formattedDate(updated_at)}</td>
      <td>{description}</td>
    </tr>
  )
}

export default RestaurantTableRow
