import { useState } from "react";
import MainContent from "./main/MainContent";
import SideBar from "./sidebar/SideBar";
import Title from "./title/Title";

function AdminPanel() {
  const [activeTab, setActiveTab] = useState("home");

  return (
    <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 bg-gray-900 h-[40rem] w-[25rem] flex flex-col rounded-md text-white">
      <Title />
      <div className="w-full h-full flex rounded-xl">
        <SideBar setActiveTab={setActiveTab} />
        <MainContent activeTab={activeTab} />
      </div>
    </div>
  );
}

export default AdminPanel;
