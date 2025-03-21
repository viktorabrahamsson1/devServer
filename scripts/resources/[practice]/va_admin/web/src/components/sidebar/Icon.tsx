import { ReactNode } from "react";

interface IconProps {
  children: ReactNode;
}

function Icon({ children }: IconProps) {
  return children;
}

export default Icon;
