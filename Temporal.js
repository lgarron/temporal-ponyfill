export const Temporal =
  globalThis.Temporal ?? (await import("temporal-polyfill")).Temporal;

// biome-ignore lint/suspicious/noShadowRestrictedNames: Shadowing is the point.
export const Intl = globalThis.Intl ?? (await import("temporal-polyfill")).Intl;

export const toTemporalInstant =
  globalThis.toTemporalInstant ??
  (await import("temporal-polyfill")).toTemporalInstant;
