import { useState } from "react";
import AdminPanel from "./AdminPanel";

function App() {
  const [showPanel, setShowPanel] = useState(false);
  if (showPanel) return <AdminPanel />;
}

export default App;
