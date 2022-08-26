import { createRoot } from "react-dom/client";
import { make as Editor } from "./DemoEditor.bs.js";

const container = document.getElementById("app");
const root = createRoot(container); // createRoot(container!) if you use TypeScript
root.render(<Editor />);
