.class public abstract Lcom/google/android/gms/b/fg;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/fb;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private volatile b:Ljava/lang/Thread;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/b/fh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/fh;-><init>(Lcom/google/android/gms/b/fg;)V

    iput-object v0, p0, Lcom/google/android/gms/b/fg;->a:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/b/fg;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/b/fg;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/fg;->b:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b()Ljava/util/concurrent/Future;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/b/fg;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/b/fg;->a:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/gms/b/fk;->a(ILjava/lang/Runnable;)Lcom/google/android/gms/b/gr;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/fg;->a:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/b/fk;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/b/gr;

    move-result-object v0

    goto :goto_0
.end method
