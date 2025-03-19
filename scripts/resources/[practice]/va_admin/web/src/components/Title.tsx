function Title() {
  return (
    <div className="flex align-middle justify-between border-b-[1px] border-gray-700 p-3">
      <p className="text-white font-bold text-xl">Admin Menu</p>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        fill="none"
        viewBox="0 0 24 24"
        stroke-width="1.5"
        stroke="currentColor"
        className="size-6 text-white"
      >
        <path
          stroke-linecap="round"
          stroke-linejoin="round"
          d="M6 18 18 6M6 6l12 12"
        />
      </svg>
    </div>
  );
}

export default Title;
