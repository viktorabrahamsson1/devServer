import { useState } from "react";
import Button from "../buttons/Button";
import Search from "../search/Search";

function MainContent() {
  const [activeTab, setActiveTab] = useState("home");

  return (
    <div className="bg-gray-900 w-full h-full rounded-3xl p-4 flex flex-col justify-between">
      <Search />
      <Button setActiveTab={setActiveTab} activeTab="search" />
    </div>
  );
}

export default MainContent;
