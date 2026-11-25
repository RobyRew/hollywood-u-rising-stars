.class Lcom/crashlytics/android/c/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/c/a/a/d;

.field final synthetic b:Lcom/crashlytics/android/c/q;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/q;Lcom/crashlytics/android/c/a/a/d;)V
    .locals 0

    .prologue
    .line 842
    iput-object p1, p0, Lcom/crashlytics/android/c/x;->b:Lcom/crashlytics/android/c/q;

    iput-object p2, p0, Lcom/crashlytics/android/c/x;->a:Lcom/crashlytics/android/c/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 845
    iget-object v0, p0, Lcom/crashlytics/android/c/x;->b:Lcom/crashlytics/android/c/q;

    invoke-virtual {v0}, Lcom/crashlytics/android/c/q;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/crashlytics/android/c/x;->b:Lcom/crashlytics/android/c/q;

    iget-object v1, p0, Lcom/crashlytics/android/c/x;->a:Lcom/crashlytics/android/c/a/a/d;

    invoke-static {v0, v1}, Lcom/crashlytics/android/c/q;->a(Lcom/crashlytics/android/c/q;Lcom/crashlytics/android/c/a/a/d;)V

    .line 848
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 842
    invoke-virtual {p0}, Lcom/crashlytics/android/c/x;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
