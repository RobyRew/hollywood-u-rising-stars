.class Lcom/google/android/gms/b/as;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/ak;

.field final synthetic b:Lcom/google/android/gms/b/ar;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/ar;Lcom/google/android/gms/b/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/as;->b:Lcom/google/android/gms/b/ar;

    iput-object p2, p0, Lcom/google/android/gms/b/as;->a:Lcom/google/android/gms/b/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/b/as;->a:Lcom/google/android/gms/b/ak;

    iget-object v1, p0, Lcom/google/android/gms/b/as;->b:Lcom/google/android/gms/b/ar;

    invoke-static {v1}, Lcom/google/android/gms/b/ar;->a(Lcom/google/android/gms/b/ar;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/ak;->a(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
