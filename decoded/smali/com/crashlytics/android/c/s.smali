.class Lcom/crashlytics/android/c/s;
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
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/crashlytics/android/c/q;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/q;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/crashlytics/android/c/s;->b:Lcom/crashlytics/android/c/q;

    iput-object p2, p0, Lcom/crashlytics/android/c/s;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/crashlytics/android/c/s;->b:Lcom/crashlytics/android/c/q;

    invoke-static {v0}, Lcom/crashlytics/android/c/q;->d(Lcom/crashlytics/android/c/q;)Ljava/lang/String;

    move-result-object v0

    .line 390
    new-instance v1, Lcom/crashlytics/android/c/bo;

    iget-object v2, p0, Lcom/crashlytics/android/c/s;->b:Lcom/crashlytics/android/c/q;

    invoke-virtual {v2}, Lcom/crashlytics/android/c/q;->f()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/crashlytics/android/c/bo;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lcom/crashlytics/android/c/s;->a:Ljava/util/Map;

    invoke-virtual {v1, v0, v2}, Lcom/crashlytics/android/c/bo;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 392
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/crashlytics/android/c/s;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
