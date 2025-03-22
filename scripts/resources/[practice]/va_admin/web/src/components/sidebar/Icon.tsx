import { ReactNode } from "react";

interface IconProps {
  children: ReactNode;
  setActiveTab: React.Dispatch<React.SetStateAction<string>>;
  tab: string;
}

function Icon({ children, setActiveTab, tab }: IconProps) {
  return (
    <svg
      xmlns="http://www.w3.org/2000/svg"
      fill="none"
      viewBox="0 0 24 24"
      strokeWidth="1.5"
      stroke="currentColor"
      className="size-6 self-center hover:cursor-pointer hover:text-blue-500"
      onClick={() => setActiveTab(tab)}
    >
      {children}
    </svg>
  );
}

export default Icon;
