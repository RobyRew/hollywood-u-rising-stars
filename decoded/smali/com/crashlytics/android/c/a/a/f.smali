.class public Lcom/crashlytics/android/c/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:[Lcom/crashlytics/android/c/a/a/g;


# direct methods
.method public constructor <init>(I[Lcom/crashlytics/android/c/a/a/g;)V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/crashlytics/android/c/a/a/f;-><init>(Ljava/lang/String;I[Lcom/crashlytics/android/c/a/a/g;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Lcom/crashlytics/android/c/a/a/g;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/crashlytics/android/c/a/a/f;->a:Ljava/lang/String;

    .line 83
    iput p2, p0, Lcom/crashlytics/android/c/a/a/f;->b:I

    .line 84
    iput-object p3, p0, Lcom/crashlytics/android/c/a/a/f;->c:[Lcom/crashlytics/android/c/a/a/g;

    .line 85
    return-void
.end method
