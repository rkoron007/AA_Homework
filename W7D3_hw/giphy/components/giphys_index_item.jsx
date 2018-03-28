import React from "react";

function GiphysListItem({ giphy }) {
  return (
    <li>
      <img src={giphy.images.fixed_height.url} />
    </li>
  );
}

export default GiphysListItem;
