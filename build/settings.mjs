const entryPoints = [
    "src/index.ts",
];

const prototype = {
    entryPoints : entryPoints,
    bundle: true,
    outdir: "www",
    target: "esnext",
};


export const createPrototypeWithSettings = (
    (settings) => {
        return { ...prototype, ...settings };
    }
);
