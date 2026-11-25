.class Lcom/crashlytics/android/c/as;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/c/ao;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/ao;)V
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Lcom/crashlytics/android/c/as;->a:Lcom/crashlytics/android/c/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/crashlytics/android/c/as;->a:Lcom/crashlytics/android/c/ao;

    invoke-static {v0}, Lcom/crashlytics/android/c/ao;->a(Lcom/crashlytics/android/c/ao;)Lcom/crashlytics/android/c/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/c/av;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/crashlytics/android/c/as;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
