.class public Lcom/leanplum/Util$DeviceIdInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/leanplum/Util$DeviceIdInfo;->a:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/leanplum/Util$DeviceIdInfo;->a:Ljava/lang/String;

    .line 92
    iput-boolean p2, p0, Lcom/leanplum/Util$DeviceIdInfo;->b:Z

    .line 93
    return-void
.end method
