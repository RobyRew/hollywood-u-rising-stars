.class Lcom/google/android/gms/b/gk;
.super Lcom/google/android/gms/b/gq;

# interfaces
.implements Lcom/google/android/gms/b/kb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/b/gq",
        "<TT;>;",
        "Lcom/google/android/gms/b/kb",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/gf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/b/gf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/gk;->a:Lcom/google/android/gms/b/gf;

    invoke-direct {p0}, Lcom/google/android/gms/b/gq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/b/gf;Lcom/google/android/gms/b/gg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/b/gk;-><init>(Lcom/google/android/gms/b/gf;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/gms/b/gq;->b(Ljava/lang/Object;)V

    return-void
.end method
