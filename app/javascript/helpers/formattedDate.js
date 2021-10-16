const formattedDate = (date) => {
  const formatDate = new Date(date)
  return formatDate.toDateString().substring(4)
}

export default formattedDate