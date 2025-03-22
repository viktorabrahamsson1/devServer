import Search from "../tabs/Search";
import Home from "../tabs/Home";
import Global from "../tabs/Global";
import Player from "../tabs/Player";
import Vehicle from "../tabs/Vehicle";
import Misc from "../tabs/Misc";

interface MainContentProps {
  activeTab: string;
}

function MainContent({ activeTab }: MainContentProps) {
  const renderTab = () => {
    switch (activeTab) {
      case "home":
        return <Home />;
      case "search":
        return <Search />;
      case "global":
        return <Global />;
      case "player":
        return <Player />;
      case "vehicle":
        return <Vehicle />;
      case "misc":
        return <Misc />;
    }
  };

  return (
    <div className="bg-gray-900 w-full h-full rounded-3xl p-4 flex flex-col justify-between">
      {renderTab()}
    </div>
  );
}

export default MainContent;
