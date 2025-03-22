interface ButtonProps {
  onClick: () => void;
  text: string;
}

function Button({ text, onClick }: ButtonProps) {
  return (
    <button
      className="w-32 h-8  bg-blue-800 text-white opacity-90 text-center rounded-sm hover:bg-blue-600 transition-all duration-75 "
      onClick={() => onClick()}
    >
      {text}
    </button>
  );
}

export default Button;
