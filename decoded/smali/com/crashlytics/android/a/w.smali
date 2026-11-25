.class final Lcom/crashlytics/android/a/w;
.super Ljava/util/HashSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Lcom/crashlytics/android/a/ae;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 20
    sget-object v0, Lcom/crashlytics/android/a/ae;->a:Lcom/crashlytics/android/a/ae;

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/a/w;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/crashlytics/android/a/ae;->b:Lcom/crashlytics/android/a/ae;

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/a/w;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/crashlytics/android/a/ae;->c:Lcom/crashlytics/android/a/ae;

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/a/w;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/crashlytics/android/a/ae;->d:Lcom/crashlytics/android/a/ae;

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/a/w;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method
