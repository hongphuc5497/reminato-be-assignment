// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"

const copyText = document.querySelector("#copyMe")
const showText = document.querySelector("p")

const copyMeOnClipboard = () => {
  copyText.select()
  copyText.setSelectionRange(0, 99999) // used for mobile phone
  document.execCommand("copy")
  showText.innerHTML = `${copyText.value} is copied`
  setTimeout(() => {
    showText.innerHTML = ""
  }, 1000)
}
