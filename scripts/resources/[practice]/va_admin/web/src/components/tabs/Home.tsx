import Button from "../reusable/Button";

function Home() {
  const onClick = () => {
    console.log("hehehe");
  };

  return (
    <div className="flex flex-col gap-8">
      <div className="bg-gray-800 p-4 flex flex-col justify-between gap-4">
        <p className="text-lg font-semibold">Server Information</p>
        <div className="flex flex-wrap gap-3"></div>
      </div>
      <div className="bg-gray-800 p-4 flex flex-col justify-between gap-4">
        <p className="text-lg font-semibold">Current Coords </p>
        <div className="flex flex-wrap gap-3">
          <Button text="Copy Coords" onClick={onClick} />
          <Button text="Set Coords" onClick={onClick} />
          <Button text="Save Location" onClick={onClick} />
        </div>
      </div>
      <div className="bg-gray-800 p-4 flex flex-col justify-between gap-4">
        <p className="text-lg font-semibold">Quick Actions</p>
        <div className="flex flex-wrap gap-3">
          <Button text="TP to Marker" onClick={onClick} />
          <Button text="Noclip" onClick={onClick} />
          <Button text="Revive" onClick={onClick} />
          <Button text="Heal Self" onClick={onClick} />
          <Button text="Repair Vehicle" onClick={onClick} />
          <Button text="Delete Vehicle" onClick={onClick} />
          <Button text="Spawn Vehicle" onClick={onClick} />
          <Button text="Set Sunny" onClick={onClick} />
        </div>
      </div>
    </div>
  );
}

export default Home;
