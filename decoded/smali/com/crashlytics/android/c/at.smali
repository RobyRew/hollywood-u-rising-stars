.class final Lcom/crashlytics/android/c/at;
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
.field private final a:Lcom/crashlytics/android/c/av;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/c/av;)V
    .locals 0

    .prologue
    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 854
    iput-object p1, p0, Lcom/crashlytics/android/c/at;->a:Lcom/crashlytics/android/c/av;

    .line 855
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 859
    iget-object v0, p0, Lcom/crashlytics/android/c/at;->a:Lcom/crashlytics/android/c/av;

    invoke-virtual {v0}, Lcom/crashlytics/android/c/av;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 860
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 866
    :goto_0
    return-object v0

    .line 863
    :cond_0
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Found previous crash marker."

    invoke-interface {v0, v1, v2}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/crashlytics/android/c/at;->a:Lcom/crashlytics/android/c/av;

    invoke-virtual {v0}, Lcom/crashlytics/android/c/av;->c()Z

    .line 866
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 849
    invoke-virtual {p0}, Lcom/crashlytics/android/c/at;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
