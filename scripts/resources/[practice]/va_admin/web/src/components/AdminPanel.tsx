function AdminPanel() {
  return (
    <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 bg-gray-900 h-[20rem] w-[35rem] rounded-md p-4 flex flex-col">
      <p className="text-white font-bold text-center text-2xl">ADMIN PANEL</p>
      <input
        type="text"
        className="w-max self-center mt-8 p-2 rounded-sm text-black "
        placeholder="Enter a id"
      />
      <div className="flex-1 flex items-center justify-between gap-4 w-full text-white">
        <button className="bg-gray-600 p-2 rounded-sm">Bring player</button>
        <button className="bg-gray-600 p-2 rounded-sm">Tp to player</button>
        <button className="bg-gray-600 p-2 rounded-sm">Something</button>
      </div>
    </div>
  );
}

export default AdminPanel;
