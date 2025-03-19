import MainContent from "./MainContent";
import SideBar from "./SideBar";
import Title from "./Title";

function AdminPanel() {
  return (
    <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 bg-gray-900 h-[40rem] w-[25rem] rounded-md flex flex-col">
      <Title />
      <div className="w-full h-full flex">
        <SideBar />
        <MainContent />
      </div>
    </div>
  );
}

export default AdminPanel;
