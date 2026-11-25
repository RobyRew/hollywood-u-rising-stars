.class Lcom/crashlytics/android/a/j;
.super Lb/a/a/a/d;
.source "SourceFile"


# instance fields
.field private final a:Lcom/crashlytics/android/a/z;

.field private final b:Lcom/crashlytics/android/a/m;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/a/z;Lcom/crashlytics/android/a/m;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lb/a/a/a/d;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/crashlytics/android/a/j;->a:Lcom/crashlytics/android/a/z;

    .line 16
    iput-object p2, p0, Lcom/crashlytics/android/a/j;->b:Lcom/crashlytics/android/a/m;

    .line 17
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/crashlytics/android/a/j;->a:Lcom/crashlytics/android/a/z;

    sget-object v1, Lcom/crashlytics/android/a/ae;->a:Lcom/crashlytics/android/a/ae;

    invoke-virtual {v0, p1, v1}, Lcom/crashlytics/android/a/z;->a(Landroid/app/Activity;Lcom/crashlytics/android/a/ae;)V

    .line 27
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/crashlytics/android/a/j;->a:Lcom/crashlytics/android/a/z;

    sget-object v1, Lcom/crashlytics/android/a/ae;->b:Lcom/crashlytics/android/a/ae;

    invoke-virtual {v0, p1, v1}, Lcom/crashlytics/android/a/z;->a(Landroid/app/Activity;Lcom/crashlytics/android/a/ae;)V

    .line 32
    iget-object v0, p0, Lcom/crashlytics/android/a/j;->b:Lcom/crashlytics/android/a/m;

    invoke-virtual {v0}, Lcom/crashlytics/android/a/m;->a()V

    .line 33
    return-void
.end method

.method public b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/crashlytics/android/a/j;->a:Lcom/crashlytics/android/a/z;

    sget-object v1, Lcom/crashlytics/android/a/ae;->c:Lcom/crashlytics/android/a/ae;

    invoke-virtual {v0, p1, v1}, Lcom/crashlytics/android/a/z;->a(Landroid/app/Activity;Lcom/crashlytics/android/a/ae;)V

    .line 38
    iget-object v0, p0, Lcom/crashlytics/android/a/j;->b:Lcom/crashlytics/android/a/m;

    invoke-virtual {v0}, Lcom/crashlytics/android/a/m;->b()V

    .line 39
    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/crashlytics/android/a/j;->a:Lcom/crashlytics/android/a/z;

    sget-object v1, Lcom/crashlytics/android/a/ae;->d:Lcom/crashlytics/android/a/ae;

    invoke-virtual {v0, p1, v1}, Lcom/crashlytics/android/a/z;->a(Landroid/app/Activity;Lcom/crashlytics/android/a/ae;)V

    .line 44
    return-void
.end method

.method public e(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
