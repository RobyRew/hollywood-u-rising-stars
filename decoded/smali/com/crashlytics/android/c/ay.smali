.class Lcom/crashlytics/android/c/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/a/a/e/o;


# instance fields
.field private final a:Lcom/crashlytics/android/c/cg;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/c/cg;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/crashlytics/android/c/ay;->a:Lcom/crashlytics/android/c/cg;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/crashlytics/android/c/ay;->a:Lcom/crashlytics/android/c/cg;

    invoke-interface {v0}, Lcom/crashlytics/android/c/cg;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/crashlytics/android/c/ay;->a:Lcom/crashlytics/android/c/cg;

    invoke-interface {v0}, Lcom/crashlytics/android/c/cg;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/crashlytics/android/c/ay;->a:Lcom/crashlytics/android/c/cg;

    invoke-interface {v0}, Lcom/crashlytics/android/c/cg;->c()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 37
    const-wide/16 v0, -0x1

    return-wide v0
.end method
