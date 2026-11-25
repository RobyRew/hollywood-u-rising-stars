.class Lcom/crashlytics/android/c/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/crashlytics/android/c/q;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/q;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lcom/crashlytics/android/c/v;->a:Lcom/crashlytics/android/c/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 730
    iget-object v0, p0, Lcom/crashlytics/android/c/v;->a:Lcom/crashlytics/android/c/q;

    iget-object v1, p0, Lcom/crashlytics/android/c/v;->a:Lcom/crashlytics/android/c/q;

    new-instance v2, Lcom/crashlytics/android/c/ai;

    invoke-direct {v2}, Lcom/crashlytics/android/c/ai;-><init>()V

    invoke-static {v1, v2}, Lcom/crashlytics/android/c/q;->a(Lcom/crashlytics/android/c/q;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/c/q;->a([Ljava/io/File;)V

    .line 731
    return-void
.end method
