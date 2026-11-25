.class Lcom/crashlytics/android/c/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/crashlytics/android/c/h;

.field final synthetic b:Lcom/crashlytics/android/c/aj;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/aj;Lcom/crashlytics/android/c/h;)V
    .locals 0

    .prologue
    .line 1407
    iput-object p1, p0, Lcom/crashlytics/android/c/al;->b:Lcom/crashlytics/android/c/aj;

    iput-object p2, p0, Lcom/crashlytics/android/c/al;->a:Lcom/crashlytics/android/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/crashlytics/android/c/al;->a:Lcom/crashlytics/android/c/h;

    invoke-virtual {v0}, Lcom/crashlytics/android/c/h;->a()V

    .line 1411
    return-void
.end method
