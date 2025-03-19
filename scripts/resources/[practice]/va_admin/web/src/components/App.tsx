import { useState } from "react";
import AdminPanel from "./AdminPanel";

function App() {
  const [showPanel, setShowPanel] = useState(true);
  if (showPanel) return <AdminPanel />;
}

export default App;
