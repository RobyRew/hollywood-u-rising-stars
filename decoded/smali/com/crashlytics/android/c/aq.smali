.class Lcom/crashlytics/android/c/aq;
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
.field final synthetic a:Lcom/crashlytics/android/c/ao;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/ao;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/crashlytics/android/c/aq;->a:Lcom/crashlytics/android/c/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 715
    iget-object v0, p0, Lcom/crashlytics/android/c/aq;->a:Lcom/crashlytics/android/c/ao;

    invoke-static {v0}, Lcom/crashlytics/android/c/ao;->a(Lcom/crashlytics/android/c/ao;)Lcom/crashlytics/android/c/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/c/av;->a()Z

    .line 716
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Initialization marker file created."

    invoke-interface {v0, v1, v2}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 710
    invoke-virtual {p0}, Lcom/crashlytics/android/c/aq;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
