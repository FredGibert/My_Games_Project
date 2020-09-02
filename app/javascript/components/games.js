// pour chaque game_id

const gameCard = () => {
  const games = document.querySelectorAll(".game-wrapper");
  const game_selected = document.querySelector(".game-selected");

  games.forEach( game => {
    game.addEventListener("click", (event) => {
      game_selected.innerHTML = event.currentTarget.innerHTML;
    });
  })
}

export { gameCard };
