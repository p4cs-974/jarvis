#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
agent_skills_link="$HOME/.agents/skills"
cua_skill_link="$repo_root/skills/cua-driver"

mkdir -p "$(dirname "$agent_skills_link")"

if [[ -L "$agent_skills_link" ]]; then
    if [[ "$(readlink -f "$agent_skills_link")" == "$(readlink -f "$repo_root/skills")" ]]; then
        printf 'Agent skills already linked: %s -> %s\n' "$agent_skills_link" "$repo_root/skills"
    else
        rm "$agent_skills_link"
        ln -s "$repo_root/skills" "$agent_skills_link"
        printf 'Linked agent skills: %s -> %s\n' "$agent_skills_link" "$repo_root/skills"
    fi
elif [[ -e "$agent_skills_link" ]]; then
    printf 'Cannot create agent skills link; path already exists: %s\n' "$agent_skills_link" >&2
    exit 1
else
    ln -s "$repo_root/skills" "$agent_skills_link"
    printf 'Linked agent skills: %s -> %s\n' "$agent_skills_link" "$repo_root/skills"
fi

if ! command -v cua-driver >/dev/null 2>&1; then
    printf '%s\n' "cua-driver not installed. If you don't want CUA (https://cua.ai), there's nothing to worry about. If you do, install it from https://cua.ai and run this script again."
    exit 0
fi

if ! skill_path="$(cua-driver skills path 2>/dev/null)" || [[ -z "$skill_path" ]]; then
    printf '%s\n' 'cua-driver is installed, but its skill pack could not be located.' >&2
    printf '%s\n' 'Run `cua-driver skills install`, then run this script again.' >&2
    exit 1
fi

if [[ ! -d "$skill_path" || ! -f "$skill_path/SKILL.md" ]]; then
    printf 'cua-driver skill pack not found at: %s\n' "$skill_path" >&2
    printf '%s\n' 'Run `cua-driver skills install`, then run this script again.' >&2
    exit 1
fi

mkdir -p "$(dirname "$cua_skill_link")"

if [[ -L "$cua_skill_link" ]]; then
    if [[ "$(readlink "$cua_skill_link")" == "$skill_path" ]]; then
        printf 'cua-driver skill already linked: %s -> %s\n' "$cua_skill_link" "$skill_path"
        exit 0
    fi
    rm "$cua_skill_link"
elif [[ -e "$cua_skill_link" ]]; then
    printf 'Cannot create cua-driver skill link; path already exists: %s\n' "$cua_skill_link" >&2
    exit 1
fi

ln -s "$skill_path" "$cua_skill_link"
printf 'Linked cua-driver skill: %s -> %s\n' "$cua_skill_link" "$skill_path"
