#include <iostream>
#include <cstring>
#include <cstdio>

using namespace std;

// recebe uma string s e devolve o seu comprimento
size_t len1(const char *s) {
    size_t n = 0;
    while (*s != '\0') {
        ++s;
        ++n;
    }
    return n;
}

size_t len2(const char *s) {
    size_t n = 0;
    while (*s) {
        ++s;
        ++n;
    }
    return n;
}

size_t len3(const char *s) {
    const char *t = s;
    while (*t) ++t;
    return t-s;
}

size_t len(const char *s) {
    const char *t = s;
    while (*t++);
    return t-s-1;
}

char *cpy(char *destino, const char *fonte) {
    char *inicio = destino;
    while (*fonte) {
        *destino = *fonte;
        ++fonte; ++destino;
    }
    *destino = '\0';
    return inicio;
}

// devove true se s é um prefixo de t
bool is_pref(const char *s, const char *t) {
    while (*s && *s == *t) {
        ++s; ++t;
    }
    return *s == '\0';
}

int main() {
    const char *s = "aab";
    const char *t = "aabababa";
    cout << is_pref(s, t) << '\n';
        
}