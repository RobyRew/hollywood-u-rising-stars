.class Lcom/crashlytics/android/c/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/crashlytics/android/c/ba;


# instance fields
.field final synthetic a:Lcom/crashlytics/android/c/q;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/q;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/crashlytics/android/c/ab;->a:Lcom/crashlytics/android/c/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/crashlytics/android/c/ab;->a:Lcom/crashlytics/android/c/q;

    invoke-virtual {v0, p1, p2}, Lcom/crashlytics/android/c/q;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 263
    return-void
.end method
