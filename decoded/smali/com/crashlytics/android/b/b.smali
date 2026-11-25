.class Lcom/crashlytics/android/b/b;
.super Lcom/crashlytics/android/b/a;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final a:Lb/a/a/a/d;

.field private final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lb/a/a/a/a;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/crashlytics/android/b/a;-><init>()V

    .line 18
    new-instance v0, Lcom/crashlytics/android/b/c;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/b/c;-><init>(Lcom/crashlytics/android/b/b;)V

    iput-object v0, p0, Lcom/crashlytics/android/b/b;->a:Lb/a/a/a/d;

    .line 38
    iput-object p2, p0, Lcom/crashlytics/android/b/b;->b:Ljava/util/concurrent/ExecutorService;

    .line 39
    iget-object v0, p0, Lcom/crashlytics/android/b/b;->a:Lb/a/a/a/d;

    invoke-virtual {p1, v0}, Lb/a/a/a/a;->a(Lb/a/a/a/d;)Z

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/b/b;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/crashlytics/android/b/b;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
