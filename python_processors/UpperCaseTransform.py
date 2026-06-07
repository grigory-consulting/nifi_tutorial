# Nativer Python-Processor (NiFi 2.x) - Demo
# Schreibt den FlowFile-Inhalt in Grossbuchstaben und setzt zwei Attribute.
from nifiapi.flowfiletransform import FlowFileTransform, FlowFileTransformResult


class UpperCaseTransform(FlowFileTransform):
    class Java:
        implements = ['org.apache.nifi.python.processor.FlowFileTransform']

    class ProcessorDetails:
        version = '0.0.1'
        description = 'Demo: schreibt den Inhalt in GROSSBUCHSTABEN und setzt python_verarbeitet + zeilen.'
        tags = ['demo', 'text', 'uppercase', 'python']
        dependencies = []

    def __init__(self, **kwargs):
        super().__init__()

    def transform(self, context, flowFile):
        content = flowFile.getContentsAsBytes().decode('utf-8')
        upper = content.upper()
        zeilen = len(content.splitlines())
        return FlowFileTransformResult(
            relationship='success',
            contents=upper,
            attributes={'python_verarbeitet': 'true', 'zeilen': str(zeilen)},
        )
