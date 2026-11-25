.class Lcom/crashlytics/android/c/af;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/crashlytics/android/c/q;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/crashlytics/android/c/af;->d:Lcom/crashlytics/android/c/q;

    iput-object p2, p0, Lcom/crashlytics/android/c/af;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/crashlytics/android/c/af;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/crashlytics/android/c/af;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 6

    .prologue
    .line 369
    iget-object v0, p0, Lcom/crashlytics/android/c/af;->d:Lcom/crashlytics/android/c/q;

    invoke-static {v0}, Lcom/crashlytics/android/c/q;->d(Lcom/crashlytics/android/c/q;)Ljava/lang/String;

    move-result-object v0

    .line 370
    new-instance v1, Lcom/crashlytics/android/c/bo;

    iget-object v2, p0, Lcom/crashlytics/android/c/af;->d:Lcom/crashlytics/android/c/q;

    invoke-virtual {v2}, Lcom/crashlytics/android/c/q;->f()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/crashlytics/android/c/bo;-><init>(Ljava/io/File;)V

    new-instance v2, Lcom/crashlytics/android/c/cw;

    iget-object v3, p0, Lcom/crashlytics/android/c/af;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/crashlytics/android/c/af;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/crashlytics/android/c/af;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/crashlytics/android/c/cw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/crashlytics/android/c/bo;->a(Ljava/lang/String;Lcom/crashlytics/android/c/cw;)V

    .line 372
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/crashlytics/android/c/af;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
