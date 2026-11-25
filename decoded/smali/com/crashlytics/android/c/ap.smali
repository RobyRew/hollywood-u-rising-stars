.class Lcom/crashlytics/android/c/ap;
.super Lb/a/a/a/a/c/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/a/a/c/s",
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
    .line 673
    iput-object p1, p0, Lcom/crashlytics/android/c/ap;->a:Lcom/crashlytics/android/c/ao;

    invoke-direct {p0}, Lb/a/a/a/a/c/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/crashlytics/android/c/ap;->a:Lcom/crashlytics/android/c/ao;

    invoke-virtual {v0}, Lcom/crashlytics/android/c/ao;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public b()Lb/a/a/a/a/c/o;
    .locals 1

    .prologue
    .line 681
    sget-object v0, Lb/a/a/a/a/c/o;->d:Lb/a/a/a/a/c/o;

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/crashlytics/android/c/ap;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
