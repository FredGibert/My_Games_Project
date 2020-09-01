// pour chaque game_id

const gameCard = () => {
  const games = document.querySelectorAll(".card-game");
  const game_selected = document.querySelector(".game-selected");

  games.forEach( game => {
    game.addEventListener("click", (event) => {
      game_selected.innerHTML = event.currentTarget.innerHTML;
    });
  })
}

export { gameCard };
