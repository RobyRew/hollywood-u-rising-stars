.class Lcom/crashlytics/android/c/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/crashlytics/android/c/l;


# instance fields
.field final synthetic a:Lcom/crashlytics/android/c/aj;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/aj;)V
    .locals 0

    .prologue
    .line 1397
    iput-object p1, p0, Lcom/crashlytics/android/c/ak;->a:Lcom/crashlytics/android/c/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/crashlytics/android/c/ak;->a:Lcom/crashlytics/android/c/aj;

    invoke-static {v0}, Lcom/crashlytics/android/c/aj;->a(Lcom/crashlytics/android/c/aj;)Lcom/crashlytics/android/c/ch;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/c/ch;->a(Z)V

    .line 1401
    return-void
.end method
