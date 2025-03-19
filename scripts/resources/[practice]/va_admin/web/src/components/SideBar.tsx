import GeneralIcons from "./sidebar/GeneralIcons";
import MiscIcons from "./sidebar/MiscIcons";

function SideBar() {
  return (
    <div className="h-full w-20 bg-emerald-500 p-2 flex flex-col align-middle justify-between">
      <GeneralIcons />
      <MiscIcons />
    </div>
  );
}

export default SideBar;
