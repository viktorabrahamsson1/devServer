interface ButtonProps {
  setActiveTab: React.Dispatch<React.SetStateAction<string>>;
  activeTab: string;
}

function Button({ setActiveTab, activeTab }: ButtonProps) {
  return (
    <button
      className="pt-1 pb-1 pr-10 pl-10 bg-blue-800 text-white opacity-90 text-center rounded-sm"
      onClick={() => setActiveTab(activeTab)}
    >
      Button
    </button>
  );
}

export default Button;
