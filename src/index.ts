function getElement<T>(idElement: string): T {
  const element = document.querySelector(idElement);
  if (!element) {
    throw new Error("Element is undefined");
  }

  return element as T;
}

const regenerateButton = getElement<HTMLButtonElement>("");
