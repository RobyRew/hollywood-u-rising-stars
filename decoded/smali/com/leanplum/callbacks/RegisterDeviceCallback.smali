.class public abstract Lcom/leanplum/callbacks/RegisterDeviceCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/leanplum/callbacks/RegisterDeviceCallback$EmailCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public abstract onResponse(Lcom/leanplum/callbacks/RegisterDeviceCallback$EmailCallback;)V
.end method

.method public run()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/leanplum/callbacks/RegisterDeviceCallback;->a:Lcom/leanplum/callbacks/RegisterDeviceCallback$EmailCallback;

    invoke-virtual {p0, v0}, Lcom/leanplum/callbacks/RegisterDeviceCallback;->onResponse(Lcom/leanplum/callbacks/RegisterDeviceCallback$EmailCallback;)V

    .line 32
    return-void
.end method

.method public setResponseHandler(Lcom/leanplum/callbacks/RegisterDeviceCallback$EmailCallback;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/leanplum/callbacks/RegisterDeviceCallback;->a:Lcom/leanplum/callbacks/RegisterDeviceCallback$EmailCallback;

    .line 28
    return-void
.end method
