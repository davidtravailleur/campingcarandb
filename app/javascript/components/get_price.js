const getPrice = () => {
 const inputEndDate = document.querySelector("#booking_end_date")

 inputEndDate.addEventListener("change", () => {
  const startDate = document.querySelector("#booking_start_date")
  const endDate = document.querySelector("#booking_end_date")
  const dateOne = new Date(startDate.value)
  const dateTwo = new Date(endDate.value)
  const dif = parseInt((dateTwo - dateOne)/(60000*24*60))
  console.log(dif)
  const container = document.querySelector(".show-campingcars")
  const price = parseInt(container.dataset.price)
  const totalPrice = dif * price
  const displayPrice = document.querySelector(".display-price")
  displayPrice.innerText = `Prix total: ${totalPrice} €`
 });
}


export { getPrice}
