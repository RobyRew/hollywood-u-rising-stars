.class Lcom/crashlytics/android/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/crashlytics/android/a/m;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/a/m;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/crashlytics/android/a/n;->a:Lcom/crashlytics/android/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/crashlytics/android/a/n;->a:Lcom/crashlytics/android/a/m;

    iget-object v0, v0, Lcom/crashlytics/android/a/m;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/crashlytics/android/a/n;->a:Lcom/crashlytics/android/a/m;

    invoke-static {v0}, Lcom/crashlytics/android/a/m;->a(Lcom/crashlytics/android/a/m;)V

    .line 70
    return-void
.end method
