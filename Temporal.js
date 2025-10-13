export const Temporal = globalThis.Temporal ?? (await import("temporal-polyfill")).Temporal;
export const Intl = globalThis.Intl ?? (await import("temporal-polyfill")).Intl;
export const toTemporalInstant = globalThis.toTemporalInstant ?? (await import("temporal-polyfill")).toTemporalInstant;
