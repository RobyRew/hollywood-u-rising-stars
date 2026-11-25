.class Lcom/crashlytics/android/c/t;
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
.field final synthetic a:Lcom/crashlytics/android/c/q;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/q;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/crashlytics/android/c/t;->a:Lcom/crashlytics/android/c/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/crashlytics/android/c/t;->a:Lcom/crashlytics/android/c/q;

    invoke-static {v0}, Lcom/crashlytics/android/c/q;->b(Lcom/crashlytics/android/c/q;)V

    .line 409
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/crashlytics/android/c/t;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
